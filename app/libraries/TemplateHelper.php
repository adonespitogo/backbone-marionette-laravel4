<?php

class TemplateHelper{

	protected static function getFilename(){
		return app_path().'\views\app\\'."backbone_templates.html";
	}

	public static function load($path = 'app')
	{

		$env = App::environment();

		if($env == 'local'){

			$dirs = array_filter(glob(app_path().'\views\\'.$path.'\*'), 'is_dir');

			// print_r($dirs);exit;
			$out = fopen(TemplateHelper::getFilename(), "w");

			foreach($dirs as $dir){

				$files = glob($dir.'\*.*');


				foreach($files as $file){
					$in = fopen($file, "r");
					while ($line = fgets($in)){
						fwrite($out, $line);
					}
					
				}

			}


			fclose($out);

			return file_get_contents(TemplateHelper::getFilename());
		}
		else{
			return file_get_contents(TemplateHelper::getFilename());
		}


	}
}
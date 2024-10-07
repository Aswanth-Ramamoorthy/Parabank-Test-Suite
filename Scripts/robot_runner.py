# robot_runner.py
import subprocess
from datetime import datetime

def run_robot_suite(suite_name):
    timestamp = datetime.now().strftime('%Y%m%d%H%M%S')
    command = [
        'robot',
        '--outputdir', '../../results',
        '--output', f'{suite_name}_output_{timestamp}.xml',
        '--log', f'{suite_name}_log_{timestamp}.html',
        '--report', f'{suite_name}_report_{timestamp}.html',
        '-L', 'DEBUG',
        f'{suite_name}.robot'
    ]
    result = subprocess.run(command, capture_output=False)
    return result

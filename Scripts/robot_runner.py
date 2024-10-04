# robot_runner.py
import subprocess

def run_robot_suite(suite_name):
    command = [
        'robot',
        '--outputdir', '../../results',
        '--output', f'{suite_name}_output.xml',
        '--log', f'{suite_name}_log.html',
        '--report', f'{suite_name}_report.html',
        '-L', 'DEBUG',
        f'{suite_name}.robot'
    ]
    result = subprocess.run(command, capture_output=False)
    return result

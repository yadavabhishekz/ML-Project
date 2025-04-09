import mlflow
import dagshub
dagshub.init(repo_owner='yadavabhishekz', repo_name='ML-Project', mlflow=True)
mlflow.set_experiment("MY_EXPERIMENT")
with mlflow.start_run():
    mlflow.log_param('parameter name', 'value')
    mlflow.log_metric('metric name', 1)

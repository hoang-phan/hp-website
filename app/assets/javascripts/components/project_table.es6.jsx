class ProjectTable extends React.Component {
  render () {
    var rows = this.props.projects.map(function(project) {
      return <Project name={project.name} startDate={project.startDate} endDate={project.endDate} />;
    });
    return (
      <div class='project-row'>{rows}</div>
    );
  }
}

class ProjectTable extends React.Component {
  render () {
    var rows = [];
    this.props.projects.forEach(function(project) {
      rows.push(<Project key={project.id} project={project} />);
    });
    return (
      <div className='project-rows'>{rows}</div>
    );
  }
}

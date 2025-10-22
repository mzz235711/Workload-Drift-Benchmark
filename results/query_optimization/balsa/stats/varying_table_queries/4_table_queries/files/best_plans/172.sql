/*+ HashJoin(c u b v)
 MergeJoin(c u b)
 MergeJoin(u b)
 SeqScan(c)
 IndexScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((c (u b)) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND u.Reputation<=436 AND u.Views<=44 AND u.UpVotes>=0 AND u.UpVotes<=53 AND u.CreationDate<='2014-08-27 21:30:41'::timestamp;


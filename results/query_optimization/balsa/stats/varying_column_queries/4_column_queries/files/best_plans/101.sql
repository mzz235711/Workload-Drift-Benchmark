/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-07-20 13:42:11'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=6;


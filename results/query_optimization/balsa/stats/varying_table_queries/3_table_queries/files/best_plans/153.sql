/*+ MergeJoin(v u c)
 MergeJoin(u c)
 IndexScan(v)
 IndexScan(u)
 IndexScan(c)
 Leading((v (u c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=41;


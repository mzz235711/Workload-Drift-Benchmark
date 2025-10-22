/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND u.Views>=0 AND u.Views<=16 AND u.DownVotes<=0 AND u.UpVotes>=0;


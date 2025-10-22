/*+ HashJoin(c u ph)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-26 18:55:12'::timestamp AND ph.PostHistoryTypeId=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=26;


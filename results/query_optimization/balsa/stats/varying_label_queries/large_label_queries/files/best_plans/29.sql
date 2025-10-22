/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate<='2014-09-02 15:34:22'::timestamp AND ph.CreationDate<='2014-09-11 16:10:32'::timestamp AND u.Reputation>=1 AND u.Reputation<=218 AND u.UpVotes>=0 AND u.UpVotes<=403;


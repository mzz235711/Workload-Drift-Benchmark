/*+ MergeJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-16 06:49:06'::timestamp AND b.Date<='2014-07-12 22:44:15'::timestamp AND u.DownVotes<=43 AND u.UpVotes=0;


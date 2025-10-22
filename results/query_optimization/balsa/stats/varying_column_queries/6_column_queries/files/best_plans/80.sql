/*+ HashJoin(ph c u b)
 HashJoin(c u b)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading((ph ((c u) b))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=1 AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-19 20:58:11'::timestamp AND ph.CreationDate<='2014-06-25 02:13:04'::timestamp AND u.Views<=49 AND u.DownVotes>=0;


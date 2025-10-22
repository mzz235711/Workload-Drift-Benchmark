/*+ HashJoin(c ph u b)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-09-02 10:25:52'::timestamp AND ph.PostHistoryTypeId=1 AND u.Views>=0 AND u.Views<=126 AND u.CreationDate>='2010-07-26 21:12:37'::timestamp;


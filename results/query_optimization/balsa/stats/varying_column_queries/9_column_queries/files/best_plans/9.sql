/*+ HashJoin(ph pl p b v u)
 HashJoin(pl p b v u)
 MergeJoin(p b v u)
 MergeJoin(b v u)
 HashJoin(v u)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(b)
 IndexScan(v)
 SeqScan(u)
 Leading((ph (pl (p (b (v u)))))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.CommentCount>=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-21 05:30:40'::timestamp AND ph.CreationDate<='2014-09-11 20:22:41'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-11 09:15:46'::timestamp AND u.DownVotes<=11 AND u.CreationDate<='2014-09-12 02:25:34'::timestamp;


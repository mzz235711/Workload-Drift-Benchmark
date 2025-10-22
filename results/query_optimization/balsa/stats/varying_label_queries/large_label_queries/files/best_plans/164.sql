/*+ HashJoin(ph p b u v pl)
 HashJoin(p b u v pl)
 HashJoin(p b u v)
 MergeJoin(b u v)
 HashJoin(u v)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(b)
 IndexScan(u)
 IndexScan(v)
 SeqScan(pl)
 Leading((ph ((p (b (u v))) pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=3932 AND p.FavoriteCount<=13 AND p.CreationDate>='2010-08-17 02:52:02'::timestamp AND p.CreationDate<='2014-08-11 11:53:10'::timestamp AND ph.CreationDate>='2010-08-03 07:49:34'::timestamp AND ph.CreationDate<='2014-05-03 13:59:25'::timestamp AND v.CreationDate>='2010-08-13 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND b.Date>='2010-07-19 21:39:06'::timestamp AND b.Date<='2014-09-04 08:18:17'::timestamp AND u.Reputation<=549 AND u.UpVotes>=0 AND u.CreationDate>='2011-02-25 13:56:51'::timestamp;


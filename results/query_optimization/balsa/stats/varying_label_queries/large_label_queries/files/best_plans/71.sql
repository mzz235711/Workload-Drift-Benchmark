/*+ NestLoop(v u pl p b ph)
 MergeJoin(v u pl p b)
 NestLoop(u pl p b)
 MergeJoin(u pl p)
 NestLoop(pl p)
 IndexScan(v)
 SeqScan(u)
 IndexScan(pl)
 IndexScan(p)
 IndexScan(b)
 IndexScan(ph)
 Leading(((v ((u (pl p)) b)) ph)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b, users as u WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND u.Id = ph.UserId AND u.Id = v.UserId AND p.ViewCount>=0 AND p.ViewCount<=9444 AND p.CreationDate>='2010-08-30 18:02:22'::timestamp AND p.CreationDate<='2014-09-12 12:11:31'::timestamp AND pl.CreationDate<='2014-09-08 03:42:34'::timestamp AND ph.CreationDate>='2010-11-09 18:52:16'::timestamp AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=746 AND u.UpVotes>=0 AND u.UpVotes<=6 AND u.CreationDate<='2014-09-01 20:19:35'::timestamp;


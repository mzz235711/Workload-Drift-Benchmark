/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<61 AND p.CommentCount>2 AND p.CommentCount<25 AND u.DownVotes>243 AND u.DownVotes<1604 AND v.CreationDate>'2011-11-25 02:38:22'::timestamp AND v.CreationDate<'2012-12-19 14:08:48'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2010-09-30 02:38:42'::timestamp AND b.Date<'2012-11-01 20:42:00'::timestamp;


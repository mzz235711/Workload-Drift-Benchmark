/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<50 AND p.CommentCount>15 AND p.CommentCount<17 AND u.DownVotes>29 AND u.DownVotes<217 AND v.CreationDate>'2009-10-24 01:52:51'::timestamp AND v.CreationDate<'2013-08-24 20:22:40'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-12-20 23:06:56'::timestamp AND b.Date<'2013-12-06 10:26:47'::timestamp;


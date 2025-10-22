/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<24 AND p.CommentCount>5 AND p.CommentCount<9 AND u.DownVotes>335 AND u.DownVotes<1315 AND v.CreationDate>'2009-10-10 22:42:19'::timestamp AND v.CreationDate<'2013-02-09 18:41:40'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2011-08-24 07:47:00'::timestamp AND b.Date<'2013-09-10 00:14:19'::timestamp;


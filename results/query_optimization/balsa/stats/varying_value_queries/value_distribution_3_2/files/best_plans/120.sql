/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<85 AND p.CommentCount>3 AND p.CommentCount<5 AND u.DownVotes>78 AND u.DownVotes<263 AND v.CreationDate>'2011-08-23 01:41:43'::timestamp AND v.CreationDate<'2013-02-15 03:10:47'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2013-07-15 11:25:06'::timestamp AND b.Date<'2013-12-19 16:42:40'::timestamp;


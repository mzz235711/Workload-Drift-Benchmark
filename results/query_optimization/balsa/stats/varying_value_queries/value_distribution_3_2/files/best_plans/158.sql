/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<102 AND p.CommentCount>7 AND p.CommentCount<41 AND u.DownVotes>635 AND u.DownVotes<978 AND v.CreationDate>'2010-09-26 20:44:51'::timestamp AND v.CreationDate<'2013-09-14 20:38:05'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2010-09-16 01:46:43'::timestamp AND b.Date<'2011-07-01 08:56:58'::timestamp;


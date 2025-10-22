/*+ NestLoop(p u v b)
 NestLoop(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 IndexScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>89 AND p.Score<165 AND p.CommentCount>0 AND p.CommentCount<24 AND u.DownVotes>10 AND u.DownVotes<544 AND v.CreationDate>'2013-04-11 04:16:21'::timestamp AND v.CreationDate<'2013-05-29 23:48:34'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2010-11-16 09:42:55'::timestamp AND b.Date<'2010-12-25 03:22:41'::timestamp;


/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<162 AND p.CommentCount>5 AND p.CommentCount<43 AND u.DownVotes>371 AND u.DownVotes<1148 AND v.CreationDate>'2009-07-06 02:42:18'::timestamp AND v.CreationDate<'2011-09-01 04:01:47'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<9 AND b.Date>'2010-08-31 13:39:57'::timestamp AND b.Date<'2014-07-17 02:51:48'::timestamp;


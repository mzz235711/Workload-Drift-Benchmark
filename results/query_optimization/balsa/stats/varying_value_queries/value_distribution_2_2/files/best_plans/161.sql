/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>132 AND p.Score<149 AND p.CommentCount>1 AND p.CommentCount<34 AND u.DownVotes>91 AND u.DownVotes<523 AND v.CreationDate>'2013-03-13 03:51:09'::timestamp AND v.CreationDate<'2013-12-30 02:45:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-09-07 19:20:14'::timestamp AND b.Date<'2014-04-15 04:15:19'::timestamp;


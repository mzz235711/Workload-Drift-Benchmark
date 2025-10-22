/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<135 AND p.CommentCount>11 AND p.CommentCount<37 AND u.DownVotes>206 AND u.DownVotes<1292 AND v.CreationDate>'2013-03-21 04:43:12'::timestamp AND v.CreationDate<'2014-05-21 07:46:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2012-09-06 00:06:53'::timestamp AND b.Date<'2014-03-05 01:49:55'::timestamp;


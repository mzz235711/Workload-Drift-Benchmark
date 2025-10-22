/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<132 AND p.CommentCount>0 AND p.CommentCount<39 AND u.DownVotes>468 AND u.DownVotes<1816 AND v.CreationDate>'2009-04-22 21:01:47'::timestamp AND v.CreationDate<'2012-09-20 13:41:38'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2012-09-10 13:08:46'::timestamp AND b.Date<'2012-09-20 04:01:35'::timestamp;


/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<132 AND p.CommentCount>4 AND p.CommentCount<42 AND u.DownVotes>599 AND u.DownVotes<903 AND v.CreationDate>'2009-09-16 05:10:29'::timestamp AND v.CreationDate<'2012-07-01 10:04:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-08-13 05:16:21'::timestamp AND b.Date<'2012-03-31 12:28:23'::timestamp;


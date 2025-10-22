/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<132 AND p.CommentCount>4 AND p.CommentCount<24 AND u.DownVotes>606 AND u.DownVotes<1380 AND v.CreationDate>'2011-05-13 23:23:57'::timestamp AND v.CreationDate<'2012-01-19 15:34:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2010-07-31 15:17:20'::timestamp AND b.Date<'2013-03-11 19:45:43'::timestamp;


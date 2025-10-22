/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<129 AND p.CommentCount>13 AND p.CommentCount<38 AND u.DownVotes>361 AND u.DownVotes<1680 AND v.CreationDate>'2009-08-16 11:37:36'::timestamp AND v.CreationDate<'2014-07-19 08:09:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-06-18 05:47:17'::timestamp AND b.Date<'2014-01-10 13:46:21'::timestamp;


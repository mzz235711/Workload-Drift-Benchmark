/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<148 AND p.CommentCount>4 AND p.CommentCount<13 AND u.DownVotes>421 AND u.DownVotes<1198 AND v.CreationDate>'2010-07-09 16:19:25'::timestamp AND v.CreationDate<'2013-03-27 17:10:44'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-11-28 05:37:53'::timestamp AND b.Date<'2012-06-21 04:55:41'::timestamp;


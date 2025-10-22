/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<62 AND p.CommentCount>14 AND p.CommentCount<19 AND u.DownVotes>409 AND u.DownVotes<1109 AND v.CreationDate>'2011-07-24 00:18:44'::timestamp AND v.CreationDate<'2014-01-17 14:02:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-04-11 09:55:40'::timestamp AND b.Date<'2013-06-28 22:58:18'::timestamp;


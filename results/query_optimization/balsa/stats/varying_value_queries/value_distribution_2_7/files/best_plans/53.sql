/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<180 AND p.CommentCount>11 AND p.CommentCount<39 AND u.DownVotes>234 AND u.DownVotes<1337 AND v.CreationDate>'2011-06-23 09:55:12'::timestamp AND v.CreationDate<'2014-07-12 19:39:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-05-28 03:05:09'::timestamp AND b.Date<'2014-05-17 00:58:40'::timestamp;


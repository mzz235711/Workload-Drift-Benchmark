/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<111 AND p.CommentCount>12 AND p.CommentCount<23 AND u.DownVotes>70 AND u.DownVotes<162 AND v.CreationDate>'2010-02-17 08:15:05'::timestamp AND v.CreationDate<'2014-02-28 05:15:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-02-11 11:26:50'::timestamp AND b.Date<'2014-04-02 07:23:30'::timestamp;


/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<74 AND p.CommentCount>0 AND p.CommentCount<5 AND u.DownVotes>12 AND u.DownVotes<1915 AND v.CreationDate>'2012-01-27 03:14:34'::timestamp AND v.CreationDate<'2014-04-14 22:58:22'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2013-01-19 12:45:28'::timestamp AND b.Date<'2014-05-11 05:13:16'::timestamp;


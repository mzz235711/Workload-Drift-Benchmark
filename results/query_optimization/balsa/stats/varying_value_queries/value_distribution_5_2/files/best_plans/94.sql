/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<38 AND p.CommentCount>12 AND p.CommentCount<21 AND u.DownVotes>282 AND u.DownVotes<790 AND v.CreationDate>'2012-09-04 23:11:38'::timestamp AND v.CreationDate<'2014-06-02 20:57:38'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2012-01-19 07:53:39'::timestamp AND b.Date<'2014-02-10 01:17:35'::timestamp;


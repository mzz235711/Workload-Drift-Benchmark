/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>64 AND p.Score<175 AND p.CommentCount>3 AND p.CommentCount<21 AND u.DownVotes>582 AND u.DownVotes<934 AND v.CreationDate>'2010-04-21 11:00:55'::timestamp AND v.CreationDate<'2013-02-10 12:25:31'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-04-02 09:35:44'::timestamp AND b.Date<'2014-05-27 03:02:17'::timestamp;


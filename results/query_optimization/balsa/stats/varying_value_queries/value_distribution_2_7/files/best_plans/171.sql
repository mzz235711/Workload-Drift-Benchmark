/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<121 AND p.CommentCount>0 AND p.CommentCount<29 AND u.DownVotes>516 AND u.DownVotes<1486 AND v.CreationDate>'2010-10-30 21:19:50'::timestamp AND v.CreationDate<'2013-04-13 08:14:07'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2014-02-01 09:55:25'::timestamp AND b.Date<'2014-07-25 02:09:33'::timestamp;


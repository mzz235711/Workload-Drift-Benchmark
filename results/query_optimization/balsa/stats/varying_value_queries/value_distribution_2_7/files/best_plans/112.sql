/*+ MergeJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<106 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>557 AND u.DownVotes<795 AND v.CreationDate>'2010-07-08 10:19:20'::timestamp AND v.CreationDate<'2012-02-24 23:43:35'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2011-09-03 05:57:21'::timestamp AND b.Date<'2011-11-16 02:28:13'::timestamp;


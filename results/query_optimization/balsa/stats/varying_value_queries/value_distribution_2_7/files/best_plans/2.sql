/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<34 AND p.CommentCount>5 AND p.CommentCount<28 AND u.DownVotes>402 AND u.DownVotes<924 AND v.CreationDate>'2010-09-19 20:24:51'::timestamp AND v.CreationDate<'2013-12-12 19:43:13'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-10-16 04:32:21'::timestamp AND b.Date<'2012-04-22 05:28:27'::timestamp;


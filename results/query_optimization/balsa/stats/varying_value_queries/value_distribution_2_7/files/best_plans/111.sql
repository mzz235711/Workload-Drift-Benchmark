/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>96 AND p.Score<111 AND p.CommentCount>5 AND p.CommentCount<24 AND u.DownVotes>55 AND u.DownVotes<813 AND v.CreationDate>'2011-10-10 05:40:24'::timestamp AND v.CreationDate<'2012-05-31 16:41:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-01-21 04:57:58'::timestamp AND b.Date<'2014-08-16 10:27:09'::timestamp;


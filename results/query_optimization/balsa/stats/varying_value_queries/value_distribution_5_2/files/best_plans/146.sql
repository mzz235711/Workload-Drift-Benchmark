/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<83 AND p.CommentCount>0 AND p.CommentCount<11 AND u.DownVotes>105 AND u.DownVotes<1767 AND v.CreationDate>'2011-10-31 04:12:58'::timestamp AND v.CreationDate<'2013-04-03 05:19:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-01-31 03:09:41'::timestamp AND b.Date<'2013-01-20 17:04:12'::timestamp;


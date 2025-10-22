/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>86 AND p.Score<186 AND p.CommentCount>7 AND p.CommentCount<16 AND u.DownVotes>734 AND u.DownVotes<1585 AND v.CreationDate>'2011-03-26 05:41:35'::timestamp AND v.CreationDate<'2012-11-19 00:40:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-11-14 17:09:54'::timestamp AND b.Date<'2011-12-26 20:45:56'::timestamp;


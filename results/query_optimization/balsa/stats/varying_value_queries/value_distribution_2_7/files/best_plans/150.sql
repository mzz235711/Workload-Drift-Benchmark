/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>55 AND p.Score<160 AND p.CommentCount>7 AND p.CommentCount<10 AND u.DownVotes>742 AND u.DownVotes<1220 AND v.CreationDate>'2011-07-28 17:42:56'::timestamp AND v.CreationDate<'2012-06-21 13:01:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-12-19 23:17:45'::timestamp AND b.Date<'2012-09-09 23:38:20'::timestamp;


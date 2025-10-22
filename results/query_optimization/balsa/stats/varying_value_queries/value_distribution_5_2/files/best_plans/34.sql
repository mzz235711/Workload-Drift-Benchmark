/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<172 AND p.CommentCount>4 AND p.CommentCount<9 AND u.DownVotes>234 AND u.DownVotes<1623 AND v.CreationDate>'2011-01-29 06:53:57'::timestamp AND v.CreationDate<'2014-02-19 08:09:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2013-04-27 17:14:52'::timestamp AND b.Date<'2014-01-16 06:55:31'::timestamp;


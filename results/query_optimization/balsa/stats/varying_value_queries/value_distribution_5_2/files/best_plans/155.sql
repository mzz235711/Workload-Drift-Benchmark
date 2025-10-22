/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<168 AND p.CommentCount>18 AND p.CommentCount<26 AND u.DownVotes>249 AND u.DownVotes<1361 AND v.CreationDate>'2009-02-02 09:53:11'::timestamp AND v.CreationDate<'2014-03-18 23:09:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-01-07 11:55:01'::timestamp AND b.Date<'2013-06-24 20:40:56'::timestamp;


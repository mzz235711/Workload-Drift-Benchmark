/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<85 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>335 AND u.DownVotes<1182 AND v.CreationDate>'2010-02-19 03:06:00'::timestamp AND v.CreationDate<'2013-04-16 19:36:16'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2011-04-07 05:58:53'::timestamp AND b.Date<'2014-06-24 14:05:29'::timestamp;


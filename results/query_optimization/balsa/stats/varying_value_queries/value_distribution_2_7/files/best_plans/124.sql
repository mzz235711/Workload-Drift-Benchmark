/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<178 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>135 AND u.DownVotes<1103 AND v.CreationDate>'2011-03-28 18:21:40'::timestamp AND v.CreationDate<'2013-12-01 20:46:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-11-08 23:45:41'::timestamp AND b.Date<'2014-02-06 01:45:46'::timestamp;


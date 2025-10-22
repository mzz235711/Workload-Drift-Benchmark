/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<126 AND p.CommentCount>2 AND p.CommentCount<26 AND u.DownVotes>4 AND u.DownVotes<1450 AND v.CreationDate>'2009-03-12 01:22:37'::timestamp AND v.CreationDate<'2012-11-09 01:55:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-12-28 22:01:30'::timestamp AND b.Date<'2013-05-12 00:07:11'::timestamp;


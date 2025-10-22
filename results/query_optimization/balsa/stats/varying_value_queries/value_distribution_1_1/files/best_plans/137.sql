/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>43 AND p.Score<63 AND p.CommentCount>10 AND p.CommentCount<35 AND u.DownVotes>677 AND u.DownVotes<1124 AND v.CreationDate>'2010-11-16 19:46:11'::timestamp AND v.CreationDate<'2014-06-18 10:40:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-10-25 08:20:31'::timestamp AND b.Date<'2012-06-16 12:31:55'::timestamp;


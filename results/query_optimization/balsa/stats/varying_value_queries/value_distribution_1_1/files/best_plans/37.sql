/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<69 AND p.CommentCount>2 AND p.CommentCount<38 AND u.DownVotes>101 AND u.DownVotes<1009 AND v.CreationDate>'2010-06-21 06:48:54'::timestamp AND v.CreationDate<'2012-09-19 03:19:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-06-20 21:40:00'::timestamp AND b.Date<'2012-07-11 00:12:48'::timestamp;


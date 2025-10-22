/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<111 AND p.CommentCount>8 AND p.CommentCount<39 AND u.DownVotes>129 AND u.DownVotes<829 AND v.CreationDate>'2011-12-20 11:14:06'::timestamp AND v.CreationDate<'2014-08-10 17:53:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-07-07 02:40:05'::timestamp AND b.Date<'2013-08-10 05:13:27'::timestamp;


/*+ HashJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>57 AND p.Score<168 AND p.CommentCount>1 AND p.CommentCount<4 AND u.DownVotes>33 AND u.DownVotes<1116 AND v.CreationDate>'2009-03-10 00:36:14'::timestamp AND v.CreationDate<'2013-01-06 18:27:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-01-15 14:31:26'::timestamp AND b.Date<'2014-01-28 12:09:06'::timestamp;


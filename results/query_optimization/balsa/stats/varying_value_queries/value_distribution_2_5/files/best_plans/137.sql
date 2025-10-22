/*+ HashJoin(v u b p)
 HashJoin(u b p)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 IndexScan(p)
 Leading((v ((u b) p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<66 AND p.CommentCount>6 AND p.CommentCount<27 AND u.DownVotes>13 AND u.DownVotes<1884 AND v.CreationDate>'2010-11-28 08:49:04'::timestamp AND v.CreationDate<'2014-05-31 14:57:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-02-18 15:10:10'::timestamp AND b.Date<'2011-04-04 09:45:57'::timestamp;


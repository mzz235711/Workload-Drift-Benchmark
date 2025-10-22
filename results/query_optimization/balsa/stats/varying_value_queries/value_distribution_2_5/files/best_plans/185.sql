/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<172 AND p.CommentCount>0 AND p.CommentCount<3 AND u.DownVotes>624 AND u.DownVotes<1013 AND v.CreationDate>'2009-03-13 07:32:45'::timestamp AND v.CreationDate<'2013-11-07 09:59:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-12-02 03:16:57'::timestamp AND b.Date<'2013-05-29 17:36:27'::timestamp;


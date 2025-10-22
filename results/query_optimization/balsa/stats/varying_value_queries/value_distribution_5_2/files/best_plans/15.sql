/*+ MergeJoin(u b v p)
 HashJoin(v p)
 MergeJoin(u b)
 IndexScan(u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 Leading(((u b) (v p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<40 AND p.CommentCount>5 AND p.CommentCount<13 AND u.DownVotes>776 AND u.DownVotes<957 AND v.CreationDate>'2011-01-01 07:39:58'::timestamp AND v.CreationDate<'2014-07-08 13:53:32'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-04-11 20:00:38'::timestamp AND b.Date<'2014-03-14 21:53:32'::timestamp;


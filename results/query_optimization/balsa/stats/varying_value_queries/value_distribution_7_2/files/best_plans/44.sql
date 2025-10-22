/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<9 AND p.CommentCount>9 AND p.CommentCount<36 AND u.DownVotes>547 AND u.DownVotes<1159 AND v.CreationDate>'2009-08-10 15:11:38'::timestamp AND v.CreationDate<'2013-07-25 05:54:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-05-10 02:07:06'::timestamp AND b.Date<'2014-05-04 08:02:54'::timestamp;


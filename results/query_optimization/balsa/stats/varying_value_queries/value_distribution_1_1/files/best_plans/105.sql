/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<116 AND p.CommentCount>6 AND p.CommentCount<28 AND u.DownVotes>621 AND u.DownVotes<1216 AND v.CreationDate>'2010-01-10 17:27:34'::timestamp AND v.CreationDate<'2012-03-19 08:34:06'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2012-03-14 12:42:46'::timestamp AND b.Date<'2014-03-21 20:33:10'::timestamp;


/*+ MergeJoin(ph u p)
 MergeJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-09-02 10:25:32'::timestamp AND ph.CreationDate<='2014-09-01 02:23:01'::timestamp AND p.PostTypeId=2 AND u.Views<=57;

